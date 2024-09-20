const { multiply, divide, sum, sub } = require("../calculate");

// const sum = require("../sum");
// require("../calculate")

test("adds 1 + 2 to equal 3", () => {
	expect(sum(1, 2)).toBe(3);
});


test("2 - 1 to equal 1", () => {
	expect(sub(2, 1)).toBe(1);
});

test("5 * 2 to equal 10", () => {
	expect(multiply(5, 2)).toBe(10);
});

test("10 / 2 to equal 5", () => {
	expect(divide(10, 2)).toBe(5);
});