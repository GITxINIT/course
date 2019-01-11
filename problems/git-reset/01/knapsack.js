'use strict';

const knapsack = (n, weightCapacity, weights, values) => {
    if(weightCapacity < 0 || n < 0) {
        return 0;
    }

    if(weightCapacity < weights[n]) {
        return knapsack(n - 1, weightCapacity, weights, values);
    }

    return Math.max(
        values[n] + knapsack(n, weightCapacity - weights[n], values),
        knapsack(n, weightCapacity, weights, values)
    );
}

const tests = [
	[16, [2, 3, 5, 1, 10], [4, 3, 7, 1, 5]],
	[32, [2, 3, 5, 1, 10], [4, 3, 7, 1, 5]],
	[5, [17, 3, 5, 1, 0.5, 1], [4, 3, 7, 1, 5, 3, 100]]
];

for (const [wc, ws, vs] of tests) {
	console.log(knapsack(ws.length, wc, ws, vs));
}
