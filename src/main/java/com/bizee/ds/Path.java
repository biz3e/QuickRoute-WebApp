package com.bizee.ds;

import java.util.ArrayList;
import java.util.List;

public class Path {
	private long cost;
	private List<Node<String>> path;

	public Path() {
		path = new ArrayList<>();
		cost = 0;
	}

	public Path(Path path) {
		this.path = new ArrayList<>();
		for (Node<String> n : path.getPath()) {
			this.path.add(n);
		}
		this.cost = path.getCost();
	}

	public void add(Node<String> node) {
		if (path.isEmpty()) {
			path.add(node);
			return;
		} else {
			Node<String> t = path.get(path.size() - 1);
			List<Edge<Node<String>>> edges = t.getEdges();
			for (Edge<Node<String>> edge : edges) {
				if (edge.getTarget().equals(node)) {
					cost += edge.getWeight();
					path.add(node);
					return;
				}
			}
		}
	}

	public long getCost() {
		return cost;
	}

	public List<Node<String>> getPath() {
		return path;
	}

	public boolean isEmpty() {
		return path.isEmpty();
	}

	public int size() {
		return path.size();
	}

	public void print() {
		for (Node<String> n : path) {
			System.out.println(n);
		}

	}
}
