CREATE TABLE IF NOT EXISTS events (
  id TEXT PRIMARY KEY,
  type TEXT,
  payload TEXT,
  created_at TEXT
);
CREATE TABLE IF NOT EXISTS enterprise_records (
  id TEXT PRIMARY KEY,
  tenant_id TEXT,
  title TEXT,
  payload TEXT,
  created_at TEXT
);
CREATE TABLE IF NOT EXISTS subscriptions (
  id TEXT PRIMARY KEY,
  account_id TEXT NOT NULL,
  plan TEXT,
  status TEXT,
  expires_at TEXT,
  created_at TEXT DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_sub_account ON subscriptions(account_id);
CREATE INDEX IF NOT EXISTS idx_records_tenant ON enterprise_records(tenant_id);
