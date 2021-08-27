#include <atmel_start.h>
#include <segment.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
	
	/*Initialize the segment*/
	segment_init();

	/* Replace with your application code */
	while (1) {
	}
}
