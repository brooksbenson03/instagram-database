-- benchmarks the users_username_idx

-- CREATE INDEX ON users (username);

-- With index: .040 ms
-- Without index: .545 ms

EXPLAIN ANALYZE SELECT *
FROM users
WHERE username = 'Emil30';

-- DROP INDEX users_username_idx1; -- removes index
