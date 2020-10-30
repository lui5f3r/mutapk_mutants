.class public Lorg/wikipedia/notifications/Notification$SeenTime;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeenTime"
.end annotation


# instance fields
.field private alert:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlert()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$SeenTime;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$SeenTime;->message:Ljava/lang/String;

    return-object v0
.end method
