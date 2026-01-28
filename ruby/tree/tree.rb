class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinaryTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    @root = insert_rec(@root, value)
  end

  def insert_rec(node, value)
    return Node.new(value) if node.nil?

    if value < node.value
      node.left = insert_rec(node.left, value)
    else
      node.right = insert_rec(node.right, value)
    end
    node
  end

  def inorder_traversal(node = @root, result = [])
    return result if node.nil?

    inorder_traversal(node.left, result)
    result << node.value
    inorder_traversal(node.right, result)
    result
  end

  def preorder_traversal(node = @root, result = [])
    return result if node.nil?

    result << node.value
    preorder_traversal(node.left, result)
    preorder_traversal(node.right, result)
    result
  end

  def postorder_traversal(node = @root, result = [])
    return result if node.nil?

    postorder_traversal(node.left, result)
    postorder_traversal(node.right, result)
    result << node.value
    result
  end

  def search(value, node = @root)
    return nil if node.nil?
    return node if node.value == value

    if value < node.value
      search(value, node.left)
    else
      search(value, node.right)
    end
  end

  def height(node = @root)
    return -1 if node.nil?

    left_height = height(node.left)
    right_height = height(node.right)
    [left_height, right_height].max + 1
  end

  def min_value(node = @root)
    current = node
    current = current.left while current.left
    current.value
  end
  def max_value(node = @root)
    current = node
    current = current.right while current.right
    current.value
  end
  def delete(value, node = @root)
    return node if node.nil?

    if value < node.value
      node.left = delete(value, node.left)
    elsif value > node.value
      node.right = delete(value, node.right)
    else
      if node.left.nil?
        return node.right
      elsif node.right.nil?
        return node.left
      end

      node.value = min_value(node.right)
      node.right = delete(node.value, node.right)
    end
    node
  end
end

# Example usage:
tree = BinaryTree.new
values = [50, 30, 20, 40, 70, 60, 80]
values.each { |v| tree.insert(v) } 
puts "Inorder traversal: #{tree.inorder_traversal.inspect}"
puts "Preorder traversal: #{tree.preorder_traversal.inspect}"
puts "Postorder traversal: #{tree.postorder_traversal.inspect}"
search_value = 40
found_node = tree.search(search_value)
if found_node
  puts "Found node with value: #{found_node.value}"
else
  puts "Node with value #{search_value} not found."
end
puts "Height of tree: #{tree.height}"
puts "Minimum value in tree: #{tree.min_value}"
puts "Maximum value in tree: #{tree.max_value}"
tree.delete(20)
puts "Inorder traversal after deleting 20: #{tree.inorder_traversal.inspect}"
tree.delete(30)
puts "Inorder traversal after deleting 30: #{tree.inorder_traversal.inspect}"
tree.delete(50)
puts "Inorder traversal after deleting 50: #{tree.inorder_traversal.inspect}"
