import "./App.css";
import { useEffect, useState } from "react";

const baseURL = "http://localhost:8800/";

function App() {
  const [users, setUsers] = useState([]);
  const [showModal, setShowModal] = useState(false);
  const [editingUser, setEditingUser] = useState(null);
  const [viewingUser, setViewingUser] = useState(null); // Novo estado
  const [formData, setFormData] = useState({
    nome: "",
    email: "",
    cpf: "",
    idade: "",
    telefone: "",
  });

  useEffect(() => {
    fetchUsers();
  }, []);

  const fetchUsers = async () => {
    const res = await fetch(baseURL);
    const data = await res.json();
    setUsers(data);
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const method = editingUser ? "PUT" : "POST";
    const endpoint = editingUser ? `${baseURL}${editingUser.id}` : baseURL;

    const res = await fetch(endpoint, {
      method,
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(formData)
    });

    if (res.ok) {
      setShowModal(false);
      setFormData({ nome: "", email: "", cpf: "", idade: "", telefone: "" });
      setEditingUser(null);
      fetchUsers();
    } else {
      alert("Erro ao salvar usuário.");
    }
  };

  const handleEdit = (user) => {
    setFormData(user);
    setEditingUser(user);
    setShowModal(true);
  };

  const handleDelete = async (id) => {
    if (!window.confirm("Tem certeza que deseja excluir este usuário?")) return;
    const res = await fetch(`${baseURL}${id}`, { method: "DELETE" });
    if (res.ok) fetchUsers();
    else alert("Erro ao excluir.");
  };

  const handleView = (user) => {
    setViewingUser(user);
  };

  const closeViewModal = () => {
    setViewingUser(null);
  };

  return (
    <div>
      <header className="header">
        <h1 className="title">Usuários</h1>
        <button className="add_button" onClick={() => { setShowModal(true); setEditingUser(null); }}>
          Adicionar Usuário
        </button>
      </header>

      <ul className="list">
        {users.map((user) => (
          <li key={user.id} className="li-list">
            <strong>{user.nome}</strong><br />
            {user.email}<br />
            <button className="btn-list" onClick={() => handleEdit(user)}>Editar</button>
            <button className="btn-list" onClick={() => handleDelete(user.id)}>Excluir</button>
            <button className="btn-list" onClick={() => handleView(user)}>Visualizar</button>
          </li>
        ))}
      </ul>

      {/* Modal de Adicionar/Editar */}
      {showModal && (
        <div className="modal">
          <div className="modal-content">
            <h2>{editingUser ? "Editar Usuário" : "Adicionar Usuário"}</h2>
            <form onSubmit={handleSubmit}>
              <input type="text" name="nome" placeholder="Nome" value={formData.nome} onChange={handleChange} required /><br />
              <input type="email" name="email" placeholder="Email" value={formData.email} onChange={handleChange} required /><br />
              <input type="text" name="cpf" placeholder="CPF" value={formData.cpf} onChange={handleChange} required /><br />
              <input type="number" name="idade" placeholder="Idade" value={formData.idade} onChange={handleChange} required /><br />
              <input type="text" name="telefone" placeholder="Telefone" value={formData.telefone} onChange={handleChange} required /><br />
              <button type="submit">Salvar</button>
              <button type="button" onClick={() => setShowModal(false)}>Cancelar</button>
            </form>
          </div>
        </div>
      )}

      {/* Modal de Visualização */}
      {viewingUser && (
        <div className="modal">
          <div className="modal-content">
            <h2>Detalhes do Usuário</h2>
            <p><strong>Nome:</strong> {viewingUser.nome}</p>
            <p><strong>Email:</strong> {viewingUser.email}</p>
            <p><strong>CPF:</strong> {viewingUser.cpf}</p>
            <p><strong>Idade:</strong> {viewingUser.idade} anos</p>
            <p><strong>Telefone:</strong> {viewingUser.telefone}</p>
            <button onClick={closeViewModal}>Fechar</button>
          </div>
        </div>
      )}

      <footer style={{ marginTop: "40px", textAlign: "center", color: "gray" }}>
        Desenvolvido por Seu Nome Completo
      </footer>
    </div>
  );
}

export default App;
