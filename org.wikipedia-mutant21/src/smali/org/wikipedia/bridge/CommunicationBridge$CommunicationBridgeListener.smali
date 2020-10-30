.class public interface abstract Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;
.super Ljava/lang/Object;
.source "CommunicationBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/bridge/CommunicationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommunicationBridgeListener"
.end annotation


# virtual methods
.method public abstract getModel()Lorg/wikipedia/page/PageViewModel;
.end method

.method public abstract getToolbarMargin()I
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public abstract isPreview()Z
.end method
