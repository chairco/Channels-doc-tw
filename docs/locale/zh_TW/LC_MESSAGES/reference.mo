��    *      l              �     �     �     �     �     �  �     	   �  A  �     �  }   �  �   ]       �   #    �  	     �     #   	  �   %	  �   �	    �
  b   �  �     �   �  #   {  [  �  �   �  �   ~  L     �   h  �      �   �  �   b  J   `  <   �  ;   �  9   $  �   ^  �   �  r   q  �   �  X     �  �     �     �     �     �     �  �   �  	   n  A  x     �  }   �  �   >     �  �       �  	   �  �   �  #   �  �     �   �    ~   b   �!  �   �!  �   �"  #   \#  [  �#  �   �$  �   _%  L   �%  �   I&  �   �&  �   �'  �   C(  J   A)  <   �)  ;   �)  9   *  �   ?*  �   �*  r   R+  �   �+  X   `,   Additional attributes are: AsgiHandler AsgiRequest Channel Channel Layer Channel objects are a simple abstraction around ASGI channels, which by default are unicode strings. The constructor looks like this:: Consumers Consumers are not expected to return anything, and if they do, it will be ignored. They may raise ``channels.exceptions.ConsumeLater`` to re-insert their current message at the back of the channel it was on, but be aware you can only do this so many time (10 by default) until the message is dropped to avoid deadlocking. Group Groups represent the underlying :doc:`ASGI <asgi>` group concept in an object-oriented way. The constructor looks like this:: Like :ref:`Channel <ref-channel>`, you would usually just pass a ``name``, but can pass a layer alias or object if you want to send on a non-default one. They have the following attributes: Message Message objects are what consumers get passed as their only argument. They encapsulate the basic :doc:`ASGI <asgi>` message, which is a ``dict``, with extra information. They have the following attributes: Normally, you'll just call ``Channel("my.channel.name")`` and it'll make the right thing, but if you're in a project with multiple channel layers set up, you can pass in either the layer alias or the layer object and it'll send onto that one instead. They have the following attributes: Reference These are a wrapper around the underlying :doc:`ASGI <asgi>` channel layers that supplies a routing system that maps channels to consumers, as well as aliases to help distinguish different layers in a project with multiple layers. They have the following attributes: This is a class in ``channels.handler`` that's designed to handle the workflow of HTTP requests via ASGI messages. You likely don't need to interact with it directly, but there are two useful ways you can call it: This is a subclass of ``django.http.HttpRequest`` that provides decoding from ASGI requests, and a few extra methods for ASGI-specific info. The constructor is:: When you configure channel routing, the object assigned to a channel should be a callable that takes exactly one positional argument, here called ``message``, which is a :ref:`message object <ref-message>`. A consumer is any callable that fits this definition. You shouldn't make these directly; instead, get them by alias (``default`` is the default alias):: ``AsgiHandler(message)`` will process the message through the Django view layer and yield one or more response messages to send back to the client, encoded from the Django ``HttpResponse``. ``add(channel)``: Adds the given channel (as either a :ref:`Channel <ref-channel>` object or a unicode string name) to the group. If the channel is already in the group, does nothing. ``alias``: The alias of this layer. ``channel_layer``: A :ref:`ChannelLayer <ref-channellayer>` object, representing the underlying channel layer this was received on. This can be useful in projects that have more than one layer to identify where to send messages the consumer generates (you can pass it to the constructor of :ref:`Channel <ref-channel>` or :ref:`Group <ref-group>`) ``channel_layer``: A :ref:`ChannelLayer <ref-channellayer>` object, representing the underlying channel layer to send messages on. ``channel``: A :ref:`Channel <ref-channel>` object, representing the channel this message was received on. Useful if one consumer handles multiple channels. ``channels``: The set of channels this router can handle, as unicode strings ``content``: The actual message content, as a dict. See the :doc:`ASGI spec <asgi>` or protocol message definition document for how this is structured. ``discard(channel)``: Removes the given channel (as either a :ref:`Channel <ref-channel>` object or a unicode string name) from the group, if it's in the group. Does nothing otherwise. ``encode_response(response)`` is a classmethod that can be called with a Django ``HttpResponse`` and will yield one or more ASGI messages that are the encoded response. ``match(message)``: Takes a :ref:`Message <ref-message>` and returns either a (consumer, kwargs) tuple specifying the consumer to run and the keyword argument to pass that were extracted via routing patterns, or None, meaning there's no route available. ``message`` must be an :doc:`ASGI <asgi>` ``http.request`` format message. ``message``, the raw ASGI message passed in the constructor. ``name``: The unicode string representing the channel name. ``name``: The unicode string representing the group name. ``reply_channel``, a :ref:`Channel <ref-channel>` object that represents the ``http.response.?`` reply channel for this request. ``reply_channel``: A :ref:`Channel <ref-channel>` object, representing the unique reply channel for this message, or ``None`` if there isn't one. ``router``: An object which represents the layer's mapping of channels to consumers. Has the following attributes: ``send(content)``: Sends the ``dict`` provided as *content* over the channel. The content should conform to the relevant ASGI spec or protocol definition. ``send(content)``: Sends the ``dict`` provided as *content* to all members of the group. Project-Id-Version: test 0.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-02-26 15:46+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hant_TW
Language-Team: Chinese (Taiwan) (https://www.transifex.com/django-channels-tw-docs/teams/72101/zh_TW/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Additional attributes are: AsgiHandler AsgiRequest Channel Channel Layer Channel objects are a simple abstraction around ASGI channels, which by default are unicode strings. The constructor looks like this:: Consumers Consumers are not expected to return anything, and if they do, it will be ignored. They may raise ``channels.exceptions.ConsumeLater`` to re-insert their current message at the back of the channel it was on, but be aware you can only do this so many time (10 by default) until the message is dropped to avoid deadlocking. Group Groups represent the underlying :doc:`ASGI <asgi>` group concept in an object-oriented way. The constructor looks like this:: Like :ref:`Channel <ref-channel>`, you would usually just pass a ``name``, but can pass a layer alias or object if you want to send on a non-default one. They have the following attributes: Message Message objects are what consumers get passed as their only argument. They encapsulate the basic :doc:`ASGI <asgi>` message, which is a ``dict``, with extra information. They have the following attributes: Normally, you'll just call ``Channel("my.channel.name")`` and it'll make the right thing, but if you're in a project with multiple channel layers set up, you can pass in either the layer alias or the layer object and it'll send onto that one instead. They have the following attributes: Reference These are a wrapper around the underlying :doc:`ASGI <asgi>` channel layers that supplies a routing system that maps channels to consumers, as well as aliases to help distinguish different layers in a project with multiple layers. They have the following attributes: This is a class in ``channels.handler`` that's designed to handle the workflow of HTTP requests via ASGI messages. You likely don't need to interact with it directly, but there are two useful ways you can call it: This is a subclass of ``django.http.HttpRequest`` that provides decoding from ASGI requests, and a few extra methods for ASGI-specific info. The constructor is:: When you configure channel routing, the object assigned to a channel should be a callable that takes exactly one positional argument, here called ``message``, which is a :ref:`message object <ref-message>`. A consumer is any callable that fits this definition. You shouldn't make these directly; instead, get them by alias (``default`` is the default alias):: ``AsgiHandler(message)`` will process the message through the Django view layer and yield one or more response messages to send back to the client, encoded from the Django ``HttpResponse``. ``add(channel)``: Adds the given channel (as either a :ref:`Channel <ref-channel>` object or a unicode string name) to the group. If the channel is already in the group, does nothing. ``alias``: The alias of this layer. ``channel_layer``: A :ref:`ChannelLayer <ref-channellayer>` object, representing the underlying channel layer this was received on. This can be useful in projects that have more than one layer to identify where to send messages the consumer generates (you can pass it to the constructor of :ref:`Channel <ref-channel>` or :ref:`Group <ref-group>`) ``channel_layer``: A :ref:`ChannelLayer <ref-channellayer>` object, representing the underlying channel layer to send messages on. ``channel``: A :ref:`Channel <ref-channel>` object, representing the channel this message was received on. Useful if one consumer handles multiple channels. ``channels``: The set of channels this router can handle, as unicode strings ``content``: The actual message content, as a dict. See the :doc:`ASGI spec <asgi>` or protocol message definition document for how this is structured. ``discard(channel)``: Removes the given channel (as either a :ref:`Channel <ref-channel>` object or a unicode string name) from the group, if it's in the group. Does nothing otherwise. ``encode_response(response)`` is a classmethod that can be called with a Django ``HttpResponse`` and will yield one or more ASGI messages that are the encoded response. ``match(message)``: Takes a :ref:`Message <ref-message>` and returns either a (consumer, kwargs) tuple specifying the consumer to run and the keyword argument to pass that were extracted via routing patterns, or None, meaning there's no route available. ``message`` must be an :doc:`ASGI <asgi>` ``http.request`` format message. ``message``, the raw ASGI message passed in the constructor. ``name``: The unicode string representing the channel name. ``name``: The unicode string representing the group name. ``reply_channel``, a :ref:`Channel <ref-channel>` object that represents the ``http.response.?`` reply channel for this request. ``reply_channel``: A :ref:`Channel <ref-channel>` object, representing the unique reply channel for this message, or ``None`` if there isn't one. ``router``: An object which represents the layer's mapping of channels to consumers. Has the following attributes: ``send(content)``: Sends the ``dict`` provided as *content* over the channel. The content should conform to the relevant ASGI spec or protocol definition. ``send(content)``: Sends the ``dict`` provided as *content* to all members of the group. 