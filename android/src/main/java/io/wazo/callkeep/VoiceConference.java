/*
 * Copyright (c) 2016-2019 The CallKeep Authors (see the AUTHORS file)
 * SPDX-License-Identifier: ISC, MIT
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

package io.wazo.callkeep;

import android.os.Build;
import android.telecom.Conference;
import android.telecom.Connection;
import android.telecom.PhoneAccountHandle;

import androidx.annotation.RequiresApi;

@RequiresApi(api = Build.VERSION_CODES.M)
public class VoiceConference extends Conference {

    VoiceConference(PhoneAccountHandle phoneAccountHandle) {
        super(phoneAccountHandle);
        this.setActive();
//        this.setConnectionCapabilities(Connection.CAPABILITY_MUTE | Connection.CAPABILITY_HOLD | Connection.CAPABILITY_SUPPORT_HOLD);
    }

    @Override
    public void onMerge() {
        super.onMerge();
    }

    @Override
    public void onSeparate(Connection connection) {
        super.onSeparate(connection);
    }

    @Override
    public void onDisconnect() {
        super.onDisconnect();
    }

    @Override
    public void onConnectionAdded(Connection connection) {
        super.onConnectionAdded(connection);
    }

    @Override
    public void onHold() {
        super.onHold();
    }

    @Override
    public void onUnhold() {
        super.onUnhold();
    }
}
