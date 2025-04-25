import { db } from "../db.js";

// GET - listar todos os usuários
export const getUsers = (_, res) => {
  const q = "SELECT * FROM usuarios";
  db.query(q, (err, data) => {
    if (err) return res.status(500).json(err);
    return res.status(200).json(data);
  });
};

// POST - adicionar usuário
export const addUser = (req, res) => {
  const { nome, email, cpf, idade, telefone } = req.body;

  const q = `
    INSERT INTO usuarios (nome, email, cpf, idade, telefone)
    VALUES (?, ?, ?, ?, ?)
  `;

  const values = [nome, email, cpf, idade, telefone];

  db.query(q, values, (err, result) => {
    if (err) return res.status(500).json(err);
    return res.status(201).json({ id: result.insertId });
  });
};

// PUT - atualizar usuário
export const updateUser = (req, res) => {
  const { nome, email, cpf, idade, telefone } = req.body;
  const id = req.params.id;

  const q = `
    UPDATE usuarios
    SET nome = ?, email = ?, cpf = ?, idade = ?, telefone = ?
    WHERE id = ?
  `;

  const values = [nome, email, cpf, idade, telefone, id];

  db.query(q, values, (err) => {
    if (err) return res.status(500).json(err);
    return res.status(200).json({ message: "Usuário atualizado com sucesso" });
  });
};

// DELETE - excluir usuário
export const deleteUser = (req, res) => {
  const id = req.params.id;
  const q = "DELETE FROM usuarios WHERE id = ?";

  db.query(q, [id], (err) => {
    if (err) return res.status(500).json(err);
    return res.status(200).json({ message: "Usuário excluído com sucesso" });
  });
};
