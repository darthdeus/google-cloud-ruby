# Copyright 2016 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Google
  module Pubsub
    ##
    # The `Google::Pubsub::V1` module provides the following types:
    #
    # Class | Description
    # ----- | -----------
    # {Google::Pubsub::V1::AcknowledgeRequest} | Request for the Acknowledge method.
    # {Google::Pubsub::V1::DeleteSubscriptionRequest} | Request for the DeleteSubscription method.
    # {Google::Pubsub::V1::DeleteTopicRequest} | Request for the DeleteTopic method.
    # {Google::Pubsub::V1::GetSubscriptionRequest} | Request for the GetSubscription method.
    # {Google::Pubsub::V1::GetTopicRequest} | Request for the GetTopic method.
    # {Google::Pubsub::V1::ListSubscriptionsRequest} | Request for the ListSubscriptions method.
    # {Google::Pubsub::V1::ListSubscriptionsResponse} | Response for the ListSubscriptions method.
    # {Google::Pubsub::V1::ListTopicsRequest} | Request for the ListTopics method.
    # {Google::Pubsub::V1::ListTopicsResponse} | Response for the ListTopics method.
    # {Google::Pubsub::V1::ListTopicSubscriptionsRequest} | Request for the ListTopicSubscriptions method.
    # {Google::Pubsub::V1::ListTopicSubscriptionsResponse} | Response for the ListTopicSubscriptions method.
    # {Google::Pubsub::V1::ModifyAckDeadlineRequest} | Request for the ModifyAckDeadline method.
    # {Google::Pubsub::V1::ModifyPushConfigRequest} | Request for the ModifyPushConfig method.
    # {Google::Pubsub::V1::PublishRequest} | Request for the Publish method.
    # {Google::Pubsub::V1::PublishResponse} | Response for the Publish method.
    # {Google::Pubsub::V1::PubsubMessage} | A message data and its attributes.
    # {Google::Pubsub::V1::PullRequest} | Request for the Pull method.
    # {Google::Pubsub::V1::PullResponse} | Response for the Pull method.
    # {Google::Pubsub::V1::PushConfig} | Configuration for a push delivery endpoint.
    # {Google::Pubsub::V1::ReceivedMessage} | A message and its corresponding acknowledgment ID.
    # {Google::Pubsub::V1::StreamingPullRequest} | Request for the StreamingPull streaming RPC method.
    # {Google::Pubsub::V1::StreamingPullResponse} | Response for the StreamingPull streaming RPC method.
    # {Google::Pubsub::V1::Subscription} | A subscription resource.
    # {Google::Pubsub::V1::Topic} | A topic resource.
    #
    module V1
      # A topic resource.
      # @!attribute [rw] name
      #   @return [String]
      #     The name of the topic. It must have the format
      #     +"projects/{project}/topics/{topic}"+. +{topic}+ must start with a letter,
      #     and contain only letters (+[A-Za-z]+), numbers (+[0-9]+), dashes (+-+),
      #     underscores (+_+), periods (+.+), tildes (+~+), plus (+++) or percent
      #     signs (+%+). It must be between 3 and 255 characters in length, and it
      #     must not start with +"goog"+.
      class Topic; end

      # A message data and its attributes. The message payload must not be empty;
      # it must contain either a non-empty data field, or at least one attribute.
      # @!attribute [rw] data
      #   @return [String]
      #     The message payload.
      # @!attribute [rw] attributes
      #   @return [Hash{String => String}]
      #     Optional attributes for this message.
      # @!attribute [rw] message_id
      #   @return [String]
      #     ID of this message, assigned by the server when the message is published.
      #     Guaranteed to be unique within the topic. This value may be read by a
      #     subscriber that receives a +PubsubMessage+ via a +Pull+ call or a push
      #     delivery. It must not be populated by the publisher in a +Publish+ call.
      # @!attribute [rw] publish_time
      #   @return [Google::Protobuf::Timestamp]
      #     The time at which the message was published, populated by the server when
      #     it receives the +Publish+ call. It must not be populated by the
      #     publisher in a +Publish+ call.
      class PubsubMessage; end

      # Request for the GetTopic method.
      # @!attribute [rw] topic
      #   @return [String]
      #     The name of the topic to get.
      #     Format is +projects/{project}/topics/{topic}+.
      class GetTopicRequest; end

      # Request for the Publish method.
      # @!attribute [rw] topic
      #   @return [String]
      #     The messages in the request will be published on this topic.
      #     Format is +projects/{project}/topics/{topic}+.
      # @!attribute [rw] messages
      #   @return [Array<Google::Pubsub::V1::PubsubMessage>]
      #     The messages to publish.
      class PublishRequest; end

      # Response for the +Publish+ method.
      # @!attribute [rw] message_ids
      #   @return [Array<String>]
      #     The server-assigned ID of each published message, in the same order as
      #     the messages in the request. IDs are guaranteed to be unique within
      #     the topic.
      class PublishResponse; end

      # Request for the +ListTopics+ method.
      # @!attribute [rw] project
      #   @return [String]
      #     The name of the cloud project that topics belong to.
      #     Format is +projects/{project}+.
      # @!attribute [rw] page_size
      #   @return [Integer]
      #     Maximum number of topics to return.
      # @!attribute [rw] page_token
      #   @return [String]
      #     The value returned by the last +ListTopicsResponse+; indicates that this is
      #     a continuation of a prior +ListTopics+ call, and that the system should
      #     return the next page of data.
      class ListTopicsRequest; end

      # Response for the +ListTopics+ method.
      # @!attribute [rw] topics
      #   @return [Array<Google::Pubsub::V1::Topic>]
      #     The resulting topics.
      # @!attribute [rw] next_page_token
      #   @return [String]
      #     If not empty, indicates that there may be more topics that match the
      #     request; this value should be passed in a new +ListTopicsRequest+.
      class ListTopicsResponse; end

      # Request for the +ListTopicSubscriptions+ method.
      # @!attribute [rw] topic
      #   @return [String]
      #     The name of the topic that subscriptions are attached to.
      #     Format is +projects/{project}/topics/{topic}+.
      # @!attribute [rw] page_size
      #   @return [Integer]
      #     Maximum number of subscription names to return.
      # @!attribute [rw] page_token
      #   @return [String]
      #     The value returned by the last +ListTopicSubscriptionsResponse+; indicates
      #     that this is a continuation of a prior +ListTopicSubscriptions+ call, and
      #     that the system should return the next page of data.
      class ListTopicSubscriptionsRequest; end

      # Response for the +ListTopicSubscriptions+ method.
      # @!attribute [rw] subscriptions
      #   @return [Array<String>]
      #     The names of the subscriptions that match the request.
      # @!attribute [rw] next_page_token
      #   @return [String]
      #     If not empty, indicates that there may be more subscriptions that match
      #     the request; this value should be passed in a new
      #     +ListTopicSubscriptionsRequest+ to get more subscriptions.
      class ListTopicSubscriptionsResponse; end

      # Request for the +DeleteTopic+ method.
      # @!attribute [rw] topic
      #   @return [String]
      #     Name of the topic to delete.
      #     Format is +projects/{project}/topics/{topic}+.
      class DeleteTopicRequest; end

      # A subscription resource.
      # @!attribute [rw] name
      #   @return [String]
      #     The name of the subscription. It must have the format
      #     +"projects/{project}/subscriptions/{subscription}"+. +{subscription}+ must
      #     start with a letter, and contain only letters (+[A-Za-z]+), numbers
      #     (+[0-9]+), dashes (+-+), underscores (+_+), periods (+.+), tildes (+~+),
      #     plus (+++) or percent signs (+%+). It must be between 3 and 255 characters
      #     in length, and it must not start with +"goog"+.
      # @!attribute [rw] topic
      #   @return [String]
      #     The name of the topic from which this subscription is receiving messages.
      #     Format is +projects/{project}/topics/{topic}+.
      #     The value of this field will be +_deleted-topic_+ if the topic has been
      #     deleted.
      # @!attribute [rw] push_config
      #   @return [Google::Pubsub::V1::PushConfig]
      #     If push delivery is used with this subscription, this field is
      #     used to configure it. An empty +pushConfig+ signifies that the subscriber
      #     will pull and ack messages using API methods.
      # @!attribute [rw] ack_deadline_seconds
      #   @return [Integer]
      #     This value is the maximum time after a subscriber receives a message
      #     before the subscriber should acknowledge the message. After message
      #     delivery but before the ack deadline expires and before the message is
      #     acknowledged, it is an outstanding message and will not be delivered
      #     again during that time (on a best-effort basis).
      #
      #     For pull subscriptions, this value is used as the initial value for the ack
      #     deadline. To override this value for a given message, call
      #     +ModifyAckDeadline+ with the corresponding +ack_id+ if using
      #     pull.
      #     The minimum custom deadline you can specify is 10 seconds.
      #     The maximum custom deadline you can specify is 600 seconds (10 minutes).
      #     If this parameter is 0, a default value of 10 seconds is used.
      #
      #     For push delivery, this value is also used to set the request timeout for
      #     the call to the push endpoint.
      #
      #     If the subscriber never acknowledges the message, the Pub/Sub
      #     system will eventually redeliver the message.
      class Subscription; end

      # Configuration for a push delivery endpoint.
      # @!attribute [rw] push_endpoint
      #   @return [String]
      #     A URL locating the endpoint to which messages should be pushed.
      #     For example, a Webhook endpoint might use "https://example.com/push".
      # @!attribute [rw] attributes
      #   @return [Hash{String => String}]
      #     Endpoint configuration attributes.
      #
      #     Every endpoint has a set of API supported attributes that can be used to
      #     control different aspects of the message delivery.
      #
      #     The currently supported attribute is +x-goog-version+, which you can
      #     use to change the format of the push message. This attribute
      #     indicates the version of the data expected by the endpoint. This
      #     controls the shape of the envelope (i.e. its fields and metadata).
      #     The endpoint version is based on the version of the Pub/Sub
      #     API.
      #
      #     If not present during the +CreateSubscription+ call, it will default to
      #     the version of the API used to make such call. If not present during a
      #     +ModifyPushConfig+ call, its value will not be changed. +GetSubscription+
      #     calls will always return a valid version, even if the subscription was
      #     created without this attribute.
      #
      #     The possible values for this attribute are:
      #
      #     * +v1beta1+: uses the push format defined in the v1beta1 Pub/Sub API.
      #     * +v1+ or +v1beta2+: uses the push format defined in the v1 Pub/Sub API.
      class PushConfig; end

      # A message and its corresponding acknowledgment ID.
      # @!attribute [rw] ack_id
      #   @return [String]
      #     This ID can be used to acknowledge the received message.
      # @!attribute [rw] message
      #   @return [Google::Pubsub::V1::PubsubMessage]
      #     The message.
      class ReceivedMessage; end

      # Request for the GetSubscription method.
      # @!attribute [rw] subscription
      #   @return [String]
      #     The name of the subscription to get.
      #     Format is +projects/{project}/subscriptions/{sub}+.
      class GetSubscriptionRequest; end

      # Request for the +ListSubscriptions+ method.
      # @!attribute [rw] project
      #   @return [String]
      #     The name of the cloud project that subscriptions belong to.
      #     Format is +projects/{project}+.
      # @!attribute [rw] page_size
      #   @return [Integer]
      #     Maximum number of subscriptions to return.
      # @!attribute [rw] page_token
      #   @return [String]
      #     The value returned by the last +ListSubscriptionsResponse+; indicates that
      #     this is a continuation of a prior +ListSubscriptions+ call, and that the
      #     system should return the next page of data.
      class ListSubscriptionsRequest; end

      # Response for the +ListSubscriptions+ method.
      # @!attribute [rw] subscriptions
      #   @return [Array<Google::Pubsub::V1::Subscription>]
      #     The subscriptions that match the request.
      # @!attribute [rw] next_page_token
      #   @return [String]
      #     If not empty, indicates that there may be more subscriptions that match
      #     the request; this value should be passed in a new
      #     +ListSubscriptionsRequest+ to get more subscriptions.
      class ListSubscriptionsResponse; end

      # Request for the DeleteSubscription method.
      # @!attribute [rw] subscription
      #   @return [String]
      #     The subscription to delete.
      #     Format is +projects/{project}/subscriptions/{sub}+.
      class DeleteSubscriptionRequest; end

      # Request for the ModifyPushConfig method.
      # @!attribute [rw] subscription
      #   @return [String]
      #     The name of the subscription.
      #     Format is +projects/{project}/subscriptions/{sub}+.
      # @!attribute [rw] push_config
      #   @return [Google::Pubsub::V1::PushConfig]
      #     The push configuration for future deliveries.
      #
      #     An empty +pushConfig+ indicates that the Pub/Sub system should
      #     stop pushing messages from the given subscription and allow
      #     messages to be pulled and acknowledged - effectively pausing
      #     the subscription if +Pull+ is not called.
      class ModifyPushConfigRequest; end

      # Request for the +Pull+ method.
      # @!attribute [rw] subscription
      #   @return [String]
      #     The subscription from which messages should be pulled.
      #     Format is +projects/{project}/subscriptions/{sub}+.
      # @!attribute [rw] return_immediately
      #   @return [true, false]
      #     If this field set to true, the system will respond immediately even if
      #     it there are no messages available to return in the +Pull+ response.
      #     Otherwise, the system may wait (for a bounded amount of time) until at
      #     least one message is available, rather than returning no messages. The
      #     client may cancel the request if it does not wish to wait any longer for
      #     the response.
      # @!attribute [rw] max_messages
      #   @return [Integer]
      #     The maximum number of messages returned for this request. The Pub/Sub
      #     system may return fewer than the number specified.
      class PullRequest; end

      # Response for the +Pull+ method.
      # @!attribute [rw] received_messages
      #   @return [Array<Google::Pubsub::V1::ReceivedMessage>]
      #     Received Pub/Sub messages. The Pub/Sub system will return zero messages if
      #     there are no more available in the backlog. The Pub/Sub system may return
      #     fewer than the +maxMessages+ requested even if there are more messages
      #     available in the backlog.
      class PullResponse; end

      # Request for the ModifyAckDeadline method.
      # @!attribute [rw] subscription
      #   @return [String]
      #     The name of the subscription.
      #     Format is +projects/{project}/subscriptions/{sub}+.
      # @!attribute [rw] ack_ids
      #   @return [Array<String>]
      #     List of acknowledgment IDs.
      # @!attribute [rw] ack_deadline_seconds
      #   @return [Integer]
      #     The new ack deadline with respect to the time this request was sent to
      #     the Pub/Sub system. For example, if the value is 10, the new
      #     ack deadline will expire 10 seconds after the +ModifyAckDeadline+ call
      #     was made. Specifying zero may immediately make the message available for
      #     another pull request.
      #     The minimum deadline you can specify is 0 seconds.
      #     The maximum deadline you can specify is 600 seconds (10 minutes).
      class ModifyAckDeadlineRequest; end

      # Request for the Acknowledge method.
      # @!attribute [rw] subscription
      #   @return [String]
      #     The subscription whose message is being acknowledged.
      #     Format is +projects/{project}/subscriptions/{sub}+.
      # @!attribute [rw] ack_ids
      #   @return [Array<String>]
      #     The acknowledgment ID for the messages being acknowledged that was returned
      #     by the Pub/Sub system in the +Pull+ response. Must not be empty.
      class AcknowledgeRequest; end

      # Request for the +StreamingPull+ streaming RPC method. This request is used to
      # establish the initial stream as well as to stream acknowledgements and ack
      # deadline modifications from the client to the server.
      # @!attribute [rw] subscription
      #   @return [String]
      #     The subscription for which to initialize the new stream. This must be
      #     provided in the first request on the stream, and must not be set in
      #     subsequent requests from client to server.
      #     Format is +projects/{project}/subscriptions/{sub}+.
      # @!attribute [rw] ack_ids
      #   @return [Array<String>]
      #     List of acknowledgement IDs for acknowledging previously received messages
      #     (received on this stream or a different stream). If an ack ID has expired,
      #     the corresponding message may be redelivered later. Acknowledging a message
      #     more than once will not result in an error. If the acknowledgement ID is
      #     malformed, the stream will be aborted with status +INVALID_ARGUMENT+.
      # @!attribute [rw] modify_deadline_seconds
      #   @return [Array<Integer>]
      #     The list of new ack deadlines for the IDs listed in
      #     +modify_deadline_ack_ids+. The size of this list must be the same as the
      #     size of +modify_deadline_ack_ids+. If it differs the stream will be aborted
      #     with +INVALID_ARGUMENT+. Each element in this list is applied to the
      #     element in the same position in +modify_deadline_ack_ids+. The new ack
      #     deadline is with respect to the time this request was sent to the Pub/Sub
      #     system. Must be >= 0. For example, if the value is 10, the new ack deadline
      #     will expire 10 seconds after this request is received. If the value is 0,
      #     the message is immediately made available for another streaming or
      #     non-streaming pull request. If the value is < 0 (an error), the stream will
      #     be aborted with status +INVALID_ARGUMENT+.
      # @!attribute [rw] modify_deadline_ack_ids
      #   @return [Array<String>]
      #     List of acknowledgement IDs whose deadline will be modified based on the
      #     corresponding element in +modify_deadline_seconds+. This field can be used
      #     to indicate that more time is needed to process a message by the
      #     subscriber, or to make the message available for redelivery if the
      #     processing was interrupted.
      # @!attribute [rw] stream_ack_deadline_seconds
      #   @return [Integer]
      #     The ack deadline to use for the stream. This must be provided in the
      #     first request on the stream, but it can also be updated on subsequent
      #     requests from client to server. The minimum deadline you can specify is 10
      #     seconds. The maximum deadline you can specify is 600 seconds (10 minutes).
      class StreamingPullRequest; end

      # Response for the +StreamingPull+ method. This response is used to stream
      # messages from the server to the client.
      # @!attribute [rw] received_messages
      #   @return [Array<Google::Pubsub::V1::ReceivedMessage>]
      #     Received Pub/Sub messages. This will not be empty.
      class StreamingPullResponse; end
    end
  end
end
