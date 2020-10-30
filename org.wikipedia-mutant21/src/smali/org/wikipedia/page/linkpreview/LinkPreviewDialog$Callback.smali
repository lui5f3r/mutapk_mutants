.class public interface abstract Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$Callback;
.super Ljava/lang/Object;
.source "LinkPreviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLinkPreviewAddToList(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract onLinkPreviewCopyLink(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
.end method

.method public abstract onLinkPreviewShareLink(Lorg/wikipedia/page/PageTitle;)V
.end method
