OPENQASM 2.0;
include "qelib1.inc";

// Declare two quantum bits and two classical bits
qreg q[2];
creg c[2];

// Create a Bell state
h q[0];        // Apply a Hadamard gate on the first qubit
cx q[0], q[1]; // Apply a CNOT gate with q[0] as control and q[1] as target

// Measure both qubits
measure q[0] -> c[0];
measure q[1] -> c[1];
