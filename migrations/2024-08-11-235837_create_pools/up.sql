CREATE TABLE pools (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  proof_pubkey VARCHAR(44) NOT NULL,
  total_rewards BIGINT DEFAULT 0,
  claimed_rewards BIGINT DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL
)
