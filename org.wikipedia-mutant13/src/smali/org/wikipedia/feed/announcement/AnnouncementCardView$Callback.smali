.class public interface abstract Lorg/wikipedia/feed/announcement/AnnouncementCardView$Callback;
.super Ljava/lang/Object;
.source "AnnouncementCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/announcement/AnnouncementCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAnnouncementNegativeAction(Lorg/wikipedia/feed/model/Card;)V
.end method

.method public abstract onAnnouncementPositiveAction(Lorg/wikipedia/feed/model/Card;Landroid/net/Uri;)V
.end method
