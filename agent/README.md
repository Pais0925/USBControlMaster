# USB Control Agent V8

Windows Agent for centralized USB Mass Storage + MTP/WPD policy.

New in V8: MTP/WPD uses pnputil exact device-instance enable/disable and caches disabled instance IDs in state.json.

New PC enrollment: `USBControlAgent.exe --enroll`
Existing enrolled PC: do not enroll again; install the new service EXE.
