#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdlib.h>
#include <sys/wait.h>

/**
 * infinite_while - generates an infinite while loop
 *
 * Return: 0 on success
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
/**
 * main - creates Zombie process
 *
 * Return: Aways 0 Success
 */
int main(void)
{
	pid_t child_pid;

	child_pid = fork();
	if (child_pid > 0)
	{
		infinite_while();
	}
	else if (child_pid == 0)
	{
		printf("Zombie process created, PID: %d", child_pid);
	}
	else
	{
		perror("Fork: ");
		exit(1);
	}
	return (0);
}
