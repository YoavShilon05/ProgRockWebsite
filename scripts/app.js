// This took way too long to make. Its currently 4am O:
// This is all javascript's fault! curse you javascript! D:<
let gl = null;
let ptsArrayLocation = null;
const pts = Array(12*3);
const vels = Array(12*2);

let fragCode = `#version 300 es
#define ptsCount 12
uniform highp vec3 pts[ptsCount];
out highp vec4 color;
#define TOP_LEFT vec4(0.768, 0.286, 0.270, 1.0)
#define BOTTOM_LEFT vec4(0.203, 0.203, 0.929, 1.0)
#define TOP_RIGHT vec4(1.0, 0.494, 0.0, 1.0)
#define BOTTOM_RIGHT vec4(0.0, 1.0, 0.28, 1.0)

highp float f(highp float x, highp float y)
{
    highp float sum = 0.0;
    for (int i = 0; i < ptsCount; i++)
    {        
        sum += pts[i].z/(sqrt( pow((x - pts[i].x), 2.0) + pow((y - pts[i].y), 2.0) ));
    }
    return sum;
}

bool inRange(highp float a, highp float b, highp float c, highp float d)
{
    int table = 0;
    if (a < 1.0) table |= 1;
    if (b < 1.0) table |= 2;
    if (c < 1.0) table |= 4;
    if (d < 1.0) table |= 8;

    return table != 0 && table != 15;
}

void main()
{
    highp float a = f(gl_FragCoord.x, gl_FragCoord.y);
    highp float b = f(gl_FragCoord.x + 1.0, gl_FragCoord.y);
    highp float c = f(gl_FragCoord.x + 1.0, gl_FragCoord.y + 1.0);
    highp float d = f(gl_FragCoord.x, gl_FragCoord.y + 1.0);

    if (inRange(a, b, c, d))
    {
        highp vec4 topColor = mix(TOP_LEFT, TOP_RIGHT, gl_FragCoord.x / 1920.0);
        highp vec4 leftColor = mix(TOP_LEFT, BOTTOM_LEFT, gl_FragCoord.y / 1200.0);
        highp vec4 rightColor = mix(TOP_RIGHT, BOTTOM_RIGHT, gl_FragCoord.y / 1200.0);
        highp vec4 bottomColor = mix(BOTTOM_LEFT, BOTTOM_RIGHT, gl_FragCoord.x / 1920.0);

        highp vec4 xColor = mix(topColor, bottomColor, gl_FragCoord.y / 1200.0);
        highp vec4 yColor = mix(leftColor, rightColor, gl_FragCoord.x / 1920.0);

        color = mix(xColor, yColor, gl_FragCoord.x / 1920.0);
    }
    else color = vec4(0.0);
}`


function main() {
    const canvas = document.querySelector("#glCanvas");
    
    gl = canvas.getContext("webgl2");

    gl.clearColor(0,0,0,1);
    // gl.clear(gl.COLOR_BUFFER_BIT)

    const program = gl.createProgram();
    const vao = gl.createVertexArray();
    const vbo = gl.createBuffer();


    function createShader(type, file){
        const shader = gl.createShader(type);
        
        gl.shaderSource(shader, file);
        gl.compileShader(shader)
        console.log(gl.getShaderInfoLog(shader))
        gl.attachShader(program, shader);
        gl.deleteShader(shader);
    }
    
    
    createShader(gl.VERTEX_SHADER, `#version 300 es
in highp vec2 VERTEX;

void main()
{
    gl_Position = vec4(VERTEX, 0.0, 1.0);
}`);
    createShader(gl.FRAGMENT_SHADER, fragCode);
    
    gl.linkProgram(program);
    console.log(gl.getProgramInfoLog(program))
    gl.useProgram(program);
    
    gl.bindVertexArray(vao);
    gl.bindBuffer(gl.ARRAY_BUFFER, vbo);
    gl.bufferData(gl.ARRAY_BUFFER, new Float32Array([1, +1,
                                    +1, -1,
                                    -1, +1,
                                    +1, -1,
                                    -1, -1,
                                    -1, +1,]), gl.STATIC_DRAW);

    const vertexLocation = gl.getAttribLocation(program, "VERTEX")

    gl.enableVertexAttribArray(vertexLocation);
    gl.vertexAttribPointer(vertexLocation, 2, gl.FLOAT, false, 0, 0); //if doesnt work, this is the problem.
    // done :)
    
    gl.enable(gl.BLEND);
    gl.blendFunc(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA);
    
    // ptsCountLocation = gl.getUniformLocation(program, 'ptsCount');
    ptsArrayLocation = Array(pts.length / 3);
    gl.viewport(0, 0, 1920, 1200)
    
    for (let i = 0; i < ptsArrayLocation.length; i++) {
        console.log(`pts[${i}]`);
        ptsArrayLocation[i] = gl.getUniformLocation(program, `pts[${i}]`);
    }

    genMetaballs();
    
    setInterval(update, delta);
}

function genMetaballs(){
    for (let i=0; i<pts.length/3; i++){
        pts[i*3] = Math.random() * 1920;
        pts[i*3 + 1] = Math.random() * 1200;
        pts[i*3 + 2] = Math.max(5, Math.pow(Math.random() * 10, 2))
        vels[i*2] = (Math.random() * 2 - 1) * 30;
        vels[i*2+1] = (Math.random() * 2 - 1) * 30;
    }
}

function moveMetaballs(){
    for (let i=0; i<pts.length/3; i++){
        pts[i*3] += vels[i*2] * delta
        pts[i*3+1] += vels[i*2+1] * delta
        
        if (pts[i*3] > 1920 - pts[i*3+2] || pts[i*3] < pts[i*3+2]) vels[i*2] *= -1
        if (pts[i*3 + 1] > 1200 - pts[i*3+2] || pts[i*3 + 1] < pts[i*3+2]) vels[i*2 + 1] *= -1
    }
}

let time = 0.0
const delta = 1/60
function update(){
    for (let i = 0; i < pts.length - 1; i++) {
        gl.uniform3f(ptsArrayLocation[i], pts[3*i], pts[3*i+1], pts[3*i+2]);
    }

    time += delta;
    // gl.uniform1i(ptsCountLocation, pts.length / 2);
    gl.clear(gl.COLOR_BUFFER_BIT);
    moveMetaballs();

    gl.drawArrays(gl.TRIANGLES, 0, 6);
}

window.onload = main;
