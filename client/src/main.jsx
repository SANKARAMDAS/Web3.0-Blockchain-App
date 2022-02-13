import React from 'react'
import ReactDOM from 'react-dom'
import './index.css'
import App from './App'
// import { TransactionProvider } from './context/TransactionContext';
// import { TransactionsProvider } from "./context/TransactionContext";
import { TransactionsProvider } from "./context/TransactionContext";

ReactDOM.render(
  <TransactionsProvider>
      <App />
  </TransactionsProvider>,
  document.getElementById('root'),
);
