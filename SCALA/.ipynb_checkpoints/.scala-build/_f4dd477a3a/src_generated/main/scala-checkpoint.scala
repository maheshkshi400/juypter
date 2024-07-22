

final class scala$minuscheckpoint$_ {
def args = scala$minuscheckpoint_sc.args$
def scriptPath = """scala-checkpoint.sc"""
/*<script>*/
object WhileLoopExample {
  def main(args: Array[String]): Unit = {
    var i = 1 // Initialize a variable to control the loop

    // While loop to print numbers from 1 to 5
    while (i <= 5) {
      println(i)
      i += 1 // Increment the counter
    }
  }
}







/*</script>*/ /*<generated>*//*</generated>*/
}

object scala$minuscheckpoint_sc {
  private var args$opt0 = Option.empty[Array[String]]
  def args$set(args: Array[String]): Unit = {
    args$opt0 = Some(args)
  }
  def args$opt: Option[Array[String]] = args$opt0
  def args$: Array[String] = args$opt.getOrElse {
    sys.error("No arguments passed to this script")
  }

  lazy val script = new scala$minuscheckpoint$_

  def main(args: Array[String]): Unit = {
    args$set(args)
    val _ = script.hashCode() // hashCode to clear scalac warning about pure expression in statement position
  }
}

export scala$minuscheckpoint_sc.script as `scala-checkpoint`

