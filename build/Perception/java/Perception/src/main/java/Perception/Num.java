package Perception;

public interface Num extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "Perception/Num";
  static final java.lang.String _DEFINITION = "int64 num\n";
  long getNum();
  void setNum(long value);
}
