if [ $# -ne 1 ]; then
	echo "Error: pass the argument"
	echo "Example: sh $0 <stack_name>"
	exit 1
else
stack_name=$1;
docker stack deploy --compose-file $stack_name/docker-stack.yml $stack_name
fi
