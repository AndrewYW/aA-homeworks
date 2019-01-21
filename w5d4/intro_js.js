function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(array) {
  const res = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      res.push(el);
    }
  });

  return res;
}

function isPrime(num) {
  if (num < 2) return false;

  for (let i = 2; i < n; i++){
    if (num % i === 0) return false;
  }

  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let count = 0;
  let i = 2;

  while(count < n) {
    if (isPrime(i)) {
      sum += i;
      count++;
    }
    i++;
  }
  return sum;
}

