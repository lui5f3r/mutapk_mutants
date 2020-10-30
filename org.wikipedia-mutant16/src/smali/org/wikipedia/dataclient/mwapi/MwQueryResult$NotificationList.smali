.class public Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;
.super Ljava/lang/Object;
.source "MwQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationList"
.end annotation


# instance fields
.field private continueStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "continue"
    .end annotation
.end field

.field private count:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private rawcount:I

.field private seenTime:Lorg/wikipedia/notifications/Notification$SeenTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContinue()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->continueStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 259
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->count:I

    return v0
.end method

.method public getSeenTime()Lorg/wikipedia/notifications/Notification$SeenTime;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->seenTime:Lorg/wikipedia/notifications/Notification$SeenTime;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/Notification;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list:Ljava/util/List;

    return-object v0
.end method
