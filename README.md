# Smart Safelock System
This project involves the Verilog implementation of a finite state machine (FSM) designed to manage a security system that uses a three-digit hexadecimal password to control access to a safe. The system allows users to enter a password and, depending on its correctness, either grants access or triggers a lockout if incorrect attempts exceed the allowable limit.

### Key Features:

1) **Password Verification Process** : <br>
The FSM operates through a sequence of states starting with an INITIAL state, where the user can enter a new password(3-digit hexadecimal), followed by a VERIFY state, where the entered password is compared with a stored password (saved_pass). If the password matches, the FSM transitions to a Verify Success state, where the user is granted access. If the password is incorrect, the FSM checks the number of trials. If the trials are less than 3, the user is allowed to attempt again. Otherwise, the system transitions to a Freeze and Alarm state.

2) **Security Features** : <br>
The system limits the number of incorrect password attempts to 3. After three failed attempts, it enters the Freeze state, sounding an alarm and preventing further access attempts until a system reset. The design includes logic to reset the system via an external signal (i_reset), allowing a fresh password entry after an alarm or freeze event.

3) **State Indicators and Decoders** : <br>
Various signals such as o_trials, o_correct, and o_incorrect help monitor the system's status, including the number of remaining attempts and the correctness of the password. LED displays are used to visually indicate the system’s status. An LED7_decoder and state_decoder provide feedback to the user about the FSM’s current state and whether the system is in a secure (locked) or unlocked state.

4) **Input Handling and Debouncing** : <br>
External keys (KEY0, KEY1, KEY2, and KEY3) serve as input mechanisms, with posedge_detector components ensuring accurate edge detection and debouncing of the signals. The system relies on the switches (SW[3:0]) to input the hexadecimal digits of the password, and a pass_decoder converts the entered digits for comparison against the saved password.

5) **Hardware Implementation** : <br>
The FSM is implemented and verified using FPGA technology, specifically on a Terasic DE2I-150 FPGA board from Altera. The design leverages the FPGA’s high-performance hardware resources to efficiently manage the password verification process in real-time.

6) **Clock and Reset Management** : <br>
A clock signal (Clock_50 -> 50MHz) provides the necessary timing for FSM transitions, and the reset signal (i_reset) ensures that the system can be restarted from a default state when needed.


This security system leverages Verilog-based FSM design principles, offering robust protection for a safe with a customizable password mechanism. It combines practical use of FPGA technology with a clear structure for input handling, password verification, and secure lockout functionality.

## Flowchart
![_Flowchart_](https://github.com/user-attachments/assets/cbbdec47-eaaf-4a51-9324-319f65c4c549)

