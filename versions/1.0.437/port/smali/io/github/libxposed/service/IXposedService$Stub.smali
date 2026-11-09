.class public abstract Lio/github/libxposed/service/IXposedService$Stub;
.super Landroid/os/Binder;
.source "IXposedService.java"

# interfaces
.implements Lio/github/libxposed/service/IXposedService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/libxposed/service/IXposedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/libxposed/service/IXposedService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deleteRemoteFile:I = 0x21

.field static final TRANSACTION_deleteRemotePreferences:I = 0x17

.field static final TRANSACTION_getApiVersion:I = 0x2

.field static final TRANSACTION_getFrameworkName:I = 0x3

.field static final TRANSACTION_getFrameworkProperties:I = 0x6

.field static final TRANSACTION_getFrameworkVersion:I = 0x4

.field static final TRANSACTION_getFrameworkVersionCode:I = 0x5

.field static final TRANSACTION_getRunningTargets:I = 0xe

.field static final TRANSACTION_getScope:I = 0xb

.field static final TRANSACTION_hotReloadModule:I = 0xf

.field static final TRANSACTION_listRemoteFiles:I = 0x1f

.field static final TRANSACTION_openRemoteFile:I = 0x20

.field static final TRANSACTION_removeScope:I = 0xd

.field static final TRANSACTION_requestRemotePreferences:I = 0x15

.field static final TRANSACTION_requestScope:I = 0xc

.field static final TRANSACTION_updateRemotePreferences:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "io.github.libxposed.service.IXposedService"

    invoke-virtual {p0, p0, v0}, Lio/github/libxposed/service/IXposedService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/github/libxposed/service/IXposedService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    const-string v0, "io.github.libxposed.service.IXposedService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/github/libxposed/service/IXposedService;

    if-eqz v1, :cond_1

    .line 115
    move-object v1, v0

    check-cast v1, Lio/github/libxposed/service/IXposedService;

    return-object v1

    .line 117
    :cond_1
    new-instance v1, Lio/github/libxposed/service/IXposedService$Stub$Proxy;

    invoke-direct {v1, p0}, Lio/github/libxposed/service/IXposedService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 121
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 126
    const-string v1, "io.github.libxposed.service.IXposedService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 254
    :sswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lio/github/libxposed/service/IXposedService$Stub;->deleteRemoteFile(Ljava/lang/String;)Z

    move-result v2

    .line 256
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto/16 :goto_0

    .line 245
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lio/github/libxposed/service/IXposedService$Stub;->openRemoteFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 247
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-static {p3, v2, v0}, Lio/github/libxposed/service/IXposedService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 249
    goto/16 :goto_0

    .line 237
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->listRemoteFiles()[Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 240
    goto/16 :goto_0

    .line 230
    .end local v1    # "_result":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lio/github/libxposed/service/IXposedService$Stub;->deleteRemotePreferences(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_0

    .line 220
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lio/github/libxposed/service/IXposedService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 223
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2}, Lio/github/libxposed/service/IXposedService$Stub;->updateRemotePreferences(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_0

    .line 211
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lio/github/libxposed/service/IXposedService$Stub;->requestRemotePreferences(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 213
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-static {p3, v2, v0}, Lio/github/libxposed/service/IXposedService$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 215
    goto/16 :goto_0

    .line 199
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/Bundle;
    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 201
    .local v1, "_arg0":J
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lio/github/libxposed/service/IXposedService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 203
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/github/libxposed/service/IHotReloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/github/libxposed/service/IHotReloadCallback;

    move-result-object v4

    .line 204
    .local v4, "_arg2":Lio/github/libxposed/service/IHotReloadCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Lio/github/libxposed/service/IXposedService$Stub;->hotReloadModule(JLandroid/os/Bundle;Lio/github/libxposed/service/IHotReloadCallback;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_0

    .line 191
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Lio/github/libxposed/service/IHotReloadCallback;
    :sswitch_7
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->getRunningTargets()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lio/github/libxposed/service/HookedProcess;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-static {p3, v1, v0}, Lio/github/libxposed/service/IXposedService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 194
    goto :goto_0

    .line 184
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/github/libxposed/service/HookedProcess;>;"
    :sswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lio/github/libxposed/service/IXposedService$Stub;->removeScope(Ljava/util/List;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_0

    .line 175
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lio/github/libxposed/service/IXposedScopeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/github/libxposed/service/IXposedScopeCallback;

    move-result-object v2

    .line 178
    .local v2, "_arg1":Lio/github/libxposed/service/IXposedScopeCallback;
    invoke-virtual {p0, v1, v2}, Lio/github/libxposed/service/IXposedService$Stub;->requestScope(Ljava/util/List;Lio/github/libxposed/service/IXposedScopeCallback;)V

    .line 179
    goto :goto_0

    .line 167
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Lio/github/libxposed/service/IXposedScopeCallback;
    :sswitch_a
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->getScope()Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    goto :goto_0

    .line 160
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->getFrameworkProperties()J

    move-result-wide v1

    .line 161
    .local v1, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    goto :goto_0

    .line 153
    .end local v1    # "_result":J
    :sswitch_c
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->getFrameworkVersionCode()J

    move-result-wide v1

    .line 154
    .restart local v1    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    goto :goto_0

    .line 146
    .end local v1    # "_result":J
    :sswitch_d
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    goto :goto_0

    .line 139
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->getFrameworkName()Ljava/lang/String;

    move-result-object v1

    .line 140
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    goto :goto_0

    .line 132
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p0}, Lio/github/libxposed/service/IXposedService$Stub;->getApiVersion()I

    move-result v1

    .line 133
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    nop

    .line 265
    .end local v1    # "_result":I
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_f
        0x3 -> :sswitch_e
        0x4 -> :sswitch_d
        0x5 -> :sswitch_c
        0x6 -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x17 -> :sswitch_3
        0x1f -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method
