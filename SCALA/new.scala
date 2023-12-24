import scala.util.{Try,Success,Failure}
val result = Try{
  "a".toInt
}

result match {
  case Success(x) => true
  case Failure(y) => false
}