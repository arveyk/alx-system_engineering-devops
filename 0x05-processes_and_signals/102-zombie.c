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
	pid_t id_pid;
	int zombie = 0;

	while (zombie < 5)
	{	
		id_pid = fork();
		if (id_pid > 0)
		{
			infinite_while();
			printf("Zombie process created, PID: %d\n", id_pid);

		}
		else if (id_pid == 0)
		{
			exit(0);
		}
		else
		{
			perror("Fork: ");
			exit(1);
		}
		zombie++;
	}
	return (0);
}
