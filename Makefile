.PHONY: compile
install:
	apt update
	apt install -y python3-pip
	apt install -y protobuf-compiler
	pip3 install grpcio
	pip3 install grpcio-tools
	pip3 install msgpack
	pip3 install requests
	pip3 install python-dateutil
	pip3 install iso8601

compile:
	# protoc -I../../protos --python_out=. --grpc_python_out=. ./rpc/rpc.proto
	python3 -m grpc_tools.protoc -I./src/pyfluid/rpc --python_out=./src/pyfluid --grpc_python_out=./src/pyfluid ./src/pyfluid/rpc/fluid.proto
	sed -i -e "s/fluid_pb2/pyfluid.fluid_pb2/" ./src/pyfluid/fluid_pb2_grpc.py
