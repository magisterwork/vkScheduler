package org.spree.vkscheduler.authentication;

import com.vk.api.sdk.client.actors.Actor;
import com.vk.api.sdk.client.actors.UserActor;

public class VkUserAuthentication implements VkAuthentication<UserActor> {
    @Override
    public UserActor getActor() {
        return null;
    }
}
