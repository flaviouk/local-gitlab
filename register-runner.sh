url=${1}
registration_token=${2}

docker exec -it gitlab-runner \
    gitlab-runner register -n \
        --url $url \
        --registration-token $registration_token \
		    --description "Synology Runner" \
        --executor docker \
        --docker-image alpine:latest \
        --docker-volumes /var/run/docker.sock:/var/run/docker.sock \
        --docker-network-mode gitlab_gitlab-network
