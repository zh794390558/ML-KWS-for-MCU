# This file is useful for reading the contents of the ops generated by ruby.
# You can read any graph defination in pb/pbtxt format generated by ruby
# or by python and then convert it back and forth from human readable to binary format.

from absl import app as absl_app
from absl import flags
import tensorflow as tf
from google.protobuf import text_format
from tensorflow.python.platform import gfile

def pbtxt_to_graphdef(filename):
  with open(filename, 'r') as f:
    graph_def = tf.GraphDef()
    file_content = f.read()
    text_format.Merge(file_content, graph_def)
    tf.import_graph_def(graph_def, name='')
    tf.train.write_graph(graph_def, 'pbtxt/', 'protobuf.pb', as_text=False)

def graphdef_to_pbtxt(filename): 
  with gfile.FastGFile(filename,'rb') as f:
    graph_def = tf.GraphDef()
    graph_def.ParseFromString(f.read())
    tf.import_graph_def(graph_def, name='')
    tf.train.write_graph(graph_def, 'pbtxt/', 'protobuf.pbtxt', as_text=True)
  return


def main(_):
  FLAGS = flags.FLAGS 
  if FLAGS.binary:
    graphdef_to_pbtxt(FLAGS.graph_file)  # here you can write the name of the file to be converted
  else:
    pbtxt_to_graphdef(FLAGS.graph_file)

if __name__ == '__main__':
  tf.logging.set_verbosity(tf.logging.INFO)
  tf.flags.DEFINE_string('graph_file', default=None, help='graph.pb file name') 
  tf.flags.DEFINE_bool('binary', default=True, help='binary graph file or not') 

  absl_app.run(main)

# and then a new file will be made in pbtxt directory.