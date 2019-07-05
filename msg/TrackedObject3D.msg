# Universal Unique Identifier of the object's track
string uuid

# Classes and relative probabilities estimated for the object
string[] class_name
float32[] class_probability
float64[] class_likelihood

# Confidence associated to the track
float32 confidence

# Positon and orientation of the object
geometry_msgs/PoseWithCovariance pose

# Velocity of the object
geometry_msgs/Vector3 velocity
