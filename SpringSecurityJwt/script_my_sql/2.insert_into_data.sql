use springsecurity;

start transaction;

INSERT INTO user (username, email, sub, password, is_enabled, account_id) VALUES
('user1', 'user1@example.com', 'sub1', 'password1', b'1', 1),
('user2', 'user2@example.com', 'sub2', 'password2', b'1', 2),
('user3', 'user3@example.com', 'sub3', 'password3', b'1', 3),
('user4', 'user4@example.com', 'sub4', 'password4', b'1', 4),
('user5', 'user5@example.com', 'sub5', 'password5', b'1', 5);

INSERT INTO roles (role_name) VALUES
('Admin'),
('User');

INSERT INTO role (user_id, roles_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(1, 2),
(2, 2);

commit;
rollback;