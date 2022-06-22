class Std
{
  int a = 0;
  int b = 0;
  int c = 0;

  void getdata({required int? a,int? b,int? c})
  {
    print("$a,$b,$c");
  }

void main()
{
  Std s1=Std();
  s1.getdata(a: 10);
}