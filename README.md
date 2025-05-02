# 🧠 Simple Storage Contracts

This is a small Solidity project that explores how to store and retrieve data on-chain using smart contracts. It's my first deployed project, built while learning about contracts, arrays, mappings, and inheritance in Solidity.

## 🧱 Contracts Overview

### `SimpleStorage.sol`
A basic smart contract to:
- Store a favorite number
- Retrieve it later
- Add people (name + number) to a list
- Map names to favorite numbers

```solidity
function store(uint256 _favoriteNumber) public
function retrieve() public view returns (uint256)
function addPerson(string memory _name, uint256 _favoriteNumber) public
```

---

### `StorageFactory.sol`
A factory contract that:
- Deploys multiple `SimpleStorage` contracts
- Lets you interact with them (store & get data)

```solidity
function createSimpleStorageContract() public
function sfStore(uint256 index, uint256 number) public
function sfGet(uint256 index) public view returns (uint256)
```

---

### `AddFiveStorage.sol`
An extended contract from `SimpleStorage` that overrides the `store()` function by adding `+5` to any stored number.

```solidity
function store(uint256 _newNumber) public override
```

---

## 🛠️ Built With
- Solidity `^0.8.18`
- Remix IDE

---

## 🔓 License
MIT — feel free to use, fork, or build on top of it.

---

## 📬 Let's Connect!
Learning Web3? Drop a message or connect with me on [LinkedIn](https://www.linkedin.com).
