import './App.css';

function App() {
  const version = window['appConfig']?.version || 'Demo';

  return (
    <div className="App">
      Places App

      <footer>Version: {version}</footer>
    </div>
  );
}

export default App;
