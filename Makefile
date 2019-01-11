all:
	docker build . -t immabird/minecraft
	docker push immabird/minecraft
