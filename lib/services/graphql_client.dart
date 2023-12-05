import 'package:graphql_flutter/graphql_flutter.dart';

GraphQLClient getClient() {
  final HttpLink httpLink = HttpLink(
    // 'https://web-themindbreaker.cloud.okteto.net/graphql/',
    'http://127.0.0.1:8000/graphql',
  );

  return GraphQLClient(
    cache: GraphQLCache(store: InMemoryStore()),
    link: httpLink,
  );
}
