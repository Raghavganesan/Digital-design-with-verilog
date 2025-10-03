# Digital-design-with-verilog
This repo contains basic and advanced digital circuits written in Verilog HDL. Each module includes a testbench and can be simulated using Icarus Verilog + GTKWave.

<h1>Digital Logic Circuits in Verilog</h1>

<h2>Contents</h2>
<ol>
  <li><a href="#intro">Introduction</a></li>
  <li><a href="#how-to-run">How to Run (Simulation)</a></li>
  <li><a href="#half-adder">Half Adder</a></li>
  <li><a href="#full-adder">Full Adder</a></li>
  <li><a href="#mux-2to1">2:1 Multiplexer (MUX)</a></li>
  <li><a href="#mux-4to1">4:1 Multiplexer (MUX built from 2:1)</a></li>
  <li><a href="#results">Results &amp; Waveforms (Placeholders)</a></li>
  <li><a href="#todo">To-Do / Next Circuits</a></li>
</ol>

<h2 id="intro">1) Introduction</h2>
<p>
  This repository is intended as a practical lab notebook for digital design with Verilog.
  The focus is on simple, correct, and testable modules with small self-checking testbenches.
</p>

<ul>
  <li><strong>Language:</strong> Verilog HDL</li>
  <li><strong>Tools:</strong> Icarus Verilog (compiler/simulator), GTKWave (waveform viewer)</li>
  <li><strong>Structure:</strong> One folder per topic (e.g., <code>adder/</code>, <code>mux/</code>), each with module(s) + testbench(es).</li>
</ul>

<h2 id="half-adder">3) Half Adder</h2>

<h3>Truth Table</h3>
<table>
  <thead>
    <tr>
      <th>a</th>
      <th>b</th>
      <th>sum = a ⊕ b</th>
      <th>carry = a · b</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>0</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><td>0</td><td>1</td><td>1</td><td>0</td></tr>
    <tr><td>1</td><td>0</td><td>1</td><td>0</td></tr>
    <tr><td>1</td><td>1</td><td>0</td><td>1</td></tr>
  </tbody>
</table>

<h3>Equations</h3>
<ul>
  <li><code>sum = a ^ b</code></li>
  <li><code>carry = a &amp; b</code></li>
</ul>

<h3>Simulation Results</h3>
<img width="645" height="186" alt="image" src="https://github.com/user-attachments/assets/aab78951-4b6d-46b6-ae9c-883cfc447628" />

<img width="785" height="419" alt="image" src="https://github.com/user-attachments/assets/e951be84-0680-4b81-8116-c45820c5b42a" />


<hr>

<h2 id="half-subtractor">Half Subtractor</h2>

<h3>Truth Table</h3>
<table>
  <thead>
    <tr><th>a</th><th>b</th><th>diff = a ⊕ b</th><th>borrow = a'·b</th></tr>
  </thead>
  <tbody>
    <tr><td>0</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><td>0</td><td>1</td><td>1</td><td>1</td></tr>
    <tr><td>1</td><td>0</td><td>1</td><td>0</td></tr>
    <tr><td>1</td><td>1</td><td>0</td><td>0</td></tr>
  </tbody>
</table>

<h3>Equations</h3>
<ul>
  <li><code>diff = a ^ b</code></li>
  <li><code>borrow = (~a) &amp; b</code></li>
</ul>

<h3>Simulation Results</h3>
<img >

<img width="781" height="280" alt="image" src="https://github.com/user-attachments/assets/5683dd51-9684-4473-a7f8-9547b5dc426a" />

<img width="788" height="367" alt="image" src="https://github.com/user-attachments/assets/1606257f-7292-4f6e-af39-d7c7a334d700" />

<h2 id="full-adder">4) Full Adder</h2>

<h3>Truth Table (selected rows)</h3>
<p>Inputs: <code>a, b, cin</code> → Outputs: <code>sum, cout</code></p>
<table>
  <thead>
    <tr>
      <th>a</th><th>b</th><th>cin</th><th>sum = a ⊕ b ⊕ cin</th><th>cout</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><td>0</td><td>1</td><td>1</td><td>0</td><td>1</td></tr>
    <tr><td>1</td><td>0</td><td>1</td><td>0</td><td>1</td></tr>
    <tr><td>1</td><td>1</td><td>0</td><td>0</td><td>1</td></tr>
    <tr><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr>
  </tbody>
</table>

<h3>Equations</h3>
<ul>
  <li><code>sum  = a ^ b ^ cin</code></li>
  <li><code>cout = (a &amp; b) | (cin &amp; (a ^ b))</code></li>
</ul>
<h3>Simulation Results</h3>
<img width="749" height="315" alt="image" src="https://github.com/user-attachments/assets/58b39a54-eba5-48f5-b1b8-dea6d418a385" />
<img width="765" height="414" alt="image" src="https://github.com/user-attachments/assets/8c138161-3ccb-413c-b416-9a593e200c75" />

<h2 id="full-subtractor">Full Subtractor</h2>

<p>Inputs: <code>a, b, bin</code> → Outputs: <code>diff, bout</code></p>

<h3>Truth Table</h3>
<table>
  <thead>
    <tr><th>a</th><th>b</th><th>bin</th><th>diff = a ⊕ b ⊕ bin</th><th>bout</th></tr>
  </thead>
  <tbody>
    <tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td></tr>
    <tr><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td></tr>
    <tr><td>0</td><td>1</td><td>1</td><td>0</td><td>1</td></tr>
    <tr><td>1</td><td>0</td><td>0</td><td>1</td><td>0</td></tr>
    <tr><td>1</td><td>0</td><td>1</td><td>0</td><td>0</td></tr>
    <tr><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td></tr>
    <tr><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr>
  </tbody>
</table>

<h3>Equations</h3>
<ul>
  <li><code>diff = a ^ b ^ bin</code></li>
  <li><code>bout = (~a &amp; b) | (~(a ^ b) &amp; bin)</code></li>

</ul>
<h3>Simulation Results</h3>
<img width="778" height="320" alt="image" src="https://github.com/user-attachments/assets/7e97b9ae-6aa8-4839-9f58-1ff8f54f30ee" />
<img width="1707" height="910" alt="image" src="https://github.com/user-attachments/assets/265206fc-a8c6-4591-91f9-8e6313316f66" />


