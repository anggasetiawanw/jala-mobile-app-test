class SchedulerListener {
  Function(dynamic packet) onTick;
  Function(dynamic packet) onTickDone;
  Function(dynamic packet) onTickFail;

  SchedulerListener({required this.onTick, required this.onTickDone, required this.onTickFail});
}
