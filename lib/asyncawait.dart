
Future<void> main() async
{
  print("work done");
print(await createFetchUserOrder());
}
Future<String> createFetchUserOrder() async
{
  var order = await fetchUserOrder();
  return 'ur oder is $order';
}
Future<String> fetchUserOrder() => Future.delayed(const Duration(seconds: 5),() => ('done'));

