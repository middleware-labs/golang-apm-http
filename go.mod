module github.com/middleware-labs/golang-apm-http

go 1.22

toolchain go1.23.1

require go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.55.0

require (
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	go.opentelemetry.io/otel v1.30.0 // indirect
	go.opentelemetry.io/otel/metric v1.30.0 // indirect
	go.opentelemetry.io/otel/trace v1.30.0 // indirect
)
