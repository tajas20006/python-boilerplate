# Pythonプロジェクト

このリポジトリはPythonプロジェクトのボイラープレートです。

## 機能

- uv+ruffで管理
- src/とtests/ディレクトリによる構造化
- メインプログラムのエントリーポイント
- pytestを使用したテスト例
- Dockerによるパッケージング

## 使い方

### 環境変数設定

1. `.env.example` を `.env` にコピー
2. `AWS_PROFILE` など必要な項目を入力
3. `uv sync`
4. `uv run pre-commit install`

### Clineのプラクティス?

- 新規アプリ作成、追加機能実装のタイミングで、Planモードでアプリケーションの概要、要件を伝え、実装方針を検討を行う
- 実装方針が固まったら、Actモードで実装

### Cline memory-bank

Clineが過去に何をしてきたかを永続化するためのメモリをmemory-bank/に作成する。
初期実装が完了したあたりで、実行するのがよさそう

```
# 初期化
initialize memory bank

# 更新
update memory bank
```

### メインプログラムの実行

```bash
uv run -m main
```

### Docker

```bash
# ビルド
docker build -t project-name:latest .

# 実行
docker run --rm -p 80:8000 project-name:latest [params]

# ENTRYPOINT上書き
docker run --rm -it --entrypoint "/bin/sh" project-name:latest
```
