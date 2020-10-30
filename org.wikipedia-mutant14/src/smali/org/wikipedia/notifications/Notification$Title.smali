.class public Lorg/wikipedia/notifications/Notification$Title;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Title"
.end annotation


# instance fields
.field private full:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private namespaceKey:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "namespace-key"
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public full()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$Title;->full:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMainNamespace()Z
    .locals 1

    .line 113
    iget v0, p0, Lorg/wikipedia/notifications/Notification$Title;->namespaceKey:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFull(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/wikipedia/notifications/Notification$Title;->full:Ljava/lang/String;

    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/wikipedia/notifications/Notification$Title;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
