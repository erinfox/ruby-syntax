// names = [
//     "Sophia",
//     "Noah",
//     "Jackson",
//     "Emma",
//     "Mia",
//     "Carter"
//   ]



  const oddOrEven = () => {
    return names.map(name => name.length % 2 === 0 ? "even": "odd")
  }

oddOrEven().forEach(x => console.log(x))