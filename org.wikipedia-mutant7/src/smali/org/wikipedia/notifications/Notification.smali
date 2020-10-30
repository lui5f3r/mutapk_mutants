.class public Lorg/wikipedia/notifications/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/notifications/Notification$SeenTime;,
        Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;,
        Lorg/wikipedia/notifications/Notification$Contents;,
        Lorg/wikipedia/notifications/Notification$Source;,
        Lorg/wikipedia/notifications/Notification$Links;,
        Lorg/wikipedia/notifications/Notification$Link;,
        Lorg/wikipedia/notifications/Notification$Timestamp;,
        Lorg/wikipedia/notifications/Notification$Agent;,
        Lorg/wikipedia/notifications/Notification$Title;
    }
.end annotation


# static fields
.field public static final CATEGORY_EDIT_THANK:Ljava/lang/String; = "edit-thank"

.field public static final CATEGORY_EDIT_USER_TALK:Ljava/lang/String; = "edit-user-talk"

.field public static final CATEGORY_LOGIN_FAIL:Ljava/lang/String; = "login-fail"

.field public static final CATEGORY_MENTION:Ljava/lang/String; = "mention"

.field public static final CATEGORY_REVERTED:Ljava/lang/String; = "reverted"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "system"

.field public static final CATEGORY_SYSTEM_NO_EMAIL:Ljava/lang/String; = "system-noemail"

.field public static final CATEGORY_THANK_YOU_EDIT:Ljava/lang/String; = "thank-you-edit"


# instance fields
.field private agent:Lorg/wikipedia/notifications/Notification$Agent;

.field private category:Ljava/lang/String;

.field private contents:Lorg/wikipedia/notifications/Notification$Contents;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "*"
    .end annotation
.end field

.field private id:J

.field private revid:J

.field private sources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/notifications/Notification$Source;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Lorg/wikipedia/notifications/Notification$Timestamp;

.field private title:Lorg/wikipedia/notifications/Notification$Title;

.field private type:Ljava/lang/String;

.field private wiki:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agent()Lorg/wikipedia/notifications/Notification$Agent;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->agent:Lorg/wikipedia/notifications/Notification$Agent;

    return-object v0
.end method

.method public category()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->category:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getContents()Lorg/wikipedia/notifications/Notification$Contents;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->contents:Lorg/wikipedia/notifications/Notification$Contents;

    return-object v0
.end method

.method getSources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/notifications/Notification$Source;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->sources:Ljava/util/Map;

    return-object v0
.end method

.method getTimestamp()Ljava/util/Date;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->timestamp:Lorg/wikipedia/notifications/Notification$Timestamp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification$Timestamp;->date()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object v0
.end method

.method getUtcIso8601()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->timestamp:Lorg/wikipedia/notifications/Notification$Timestamp;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/notifications/Notification$Timestamp;->access$000(Lorg/wikipedia/notifications/Notification$Timestamp;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/wikipedia/notifications/Notification;->id:J

    return-wide v0
.end method

.method public isFromWikidata()Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wikidatawiki"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public key()J
    .locals 4

    .line 51
    iget-wide v0, p0, Lorg/wikipedia/notifications/Notification;->id:J

    invoke-virtual {p0}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public revID()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/wikipedia/notifications/Notification;->revid:J

    return-wide v0
.end method

.method public title()Lorg/wikipedia/notifications/Notification$Title;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->title:Lorg/wikipedia/notifications/Notification$Title;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    iget-wide v0, p0, Lorg/wikipedia/notifications/Notification;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->type:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wiki()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification;->wiki:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
