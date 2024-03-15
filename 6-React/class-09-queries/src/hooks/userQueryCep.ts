import { useQuery } from "@tanstack/react-query";

async function getCep(Cep: String) {
  // const data = await fetch("https://cdn.apicep.com/file/apicep/06233-030.json");
  // const data = await fetch("https://api.github.com/users/J34NDERSON");
  const data = await fetch("https://jsonplaceholder.typicode.com/users");
  return data.json();
}

export function useQueryCep() {
  const query = useQuery({
    queryKey: ["Cep"],
    queryFn: () => getCep(""),
  });

  return query;
}
