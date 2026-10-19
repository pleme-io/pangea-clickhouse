# pangea-clickhouse

ClickHouse Cloud provider bindings for the Pangea infrastructure DSL.

## Overview

Provides 30 typed Terraform resource functions for the ClickHouse Cloud
provider (`ClickHouse/clickhouse` v3.39.0), covering services, Postgres
services, API keys, roles, ClickPipes, ClickStack, private endpoints, BYOC
infrastructure, UDFs and organization settings. Each resource uses Dry::Struct
validation and compiles to Terraform JSON via terraform-synthesizer. Built on
pangea-core.

## Installation

```ruby
gem 'pangea-clickhouse', '~> 0.1'
```

## Usage

```ruby
require 'pangea-clickhouse'

template :analytics do
  provider :clickhouse do
    organization_id var(:clickhouse_org_id)
    token_key var(:clickhouse_token_key)
    token_secret var(:clickhouse_token_secret)
  end

  clickhouse_service(:events, {
    name: "events",
    cloud_provider: "aws",
    region: "us-east-1",
    ip_access: [{ source: "10.0.0.0/8", description: "vpc" }]
  })
end
```

## Development

```bash
nix develop
bundle exec rspec
```
