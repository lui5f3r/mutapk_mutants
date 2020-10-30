.class public Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadNotificationWikiItem"
.end annotation


# instance fields
.field private source:Lorg/wikipedia/notifications/Notification$Source;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSource()Lorg/wikipedia/notifications/Notification$Source;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;->source:Lorg/wikipedia/notifications/Notification$Source;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/wikipedia/notifications/Notification$UnreadNotificationWikiItem;->totalCount:I

    return v0
.end method
