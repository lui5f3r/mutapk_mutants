.class public interface abstract Lorg/wikipedia/notifications/NotificationItemActionsDialog$Callback;
.super Ljava/lang/Object;
.source "NotificationItemActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/NotificationItemActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract isShowingArchived()Z
.end method

.method public abstract onActionPageTitle(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract onArchive(Lorg/wikipedia/notifications/Notification;)V
.end method
