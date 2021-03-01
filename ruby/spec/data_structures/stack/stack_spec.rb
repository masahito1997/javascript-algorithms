    
describe Stack do
  it 'should create empty stack' do
    stack = Stack.new()
    expect(stack).not.toBeNull();

    expect(stack.linkedList).not.toBeNull();

  end

    
  it 'should stack data to stack' do
    stack = Stack.new()
    
    stack.push(1);

    stack.push(2);

    
    expect(stack.to_s).to eq '2,1'
  end

    
  it 'should peek data from stack' do
    stack = Stack.new()
    
    expect(stack.peek()).to eq nil
    
    stack.push(1);

    stack.push(2);

    
    expect(stack.peek()).to eq 2
    expect(stack.peek()).to eq 2
  end

    
  it 'should check if stack is empty' do
    stack = Stack.new()
    
    expect(stack.isEmpty()).to eq true
    
    stack.push(1);

    
    expect(stack.isEmpty()).to eq false
  end

    
  it 'should pop data from stack' do
    stack = Stack.new()
    
    stack.push(1);

    stack.push(2);

    
    expect(stack.pop()).to eq 2
    expect(stack.pop()).to eq 1
    expect(stack.pop()).to eq nil
    expect(stack.isEmpty()).to eq true
  end

    
  it 'should be possible to push/pop objects' do
    stack = Stack.new()
    
 end

 end

    
    stringifier = (value) => `${value.key}:${value.value}`
    
    expect(stack.toString(stringifier)).to eq 'key2:test2,key1:test1'
    expect(stack.pop().value).to eq 'test2'
    expect(stack.pop().value).to eq 'test1'
  end

    
  it 'should be possible to convert stack to array' do
    stack = Stack.new()
    
    expect(stack.peek()).to eq nil
    
    stack.push(1);

    stack.push(2);

    stack.push(3);

    
    expect(stack.toArray()).to eq [3, 2, 1]
  end

end
