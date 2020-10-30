.class public final synthetic Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$vRqcCfsFogZw2PreOUSfzFH-qtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$vRqcCfsFogZw2PreOUSfzFH-qtw;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$vRqcCfsFogZw2PreOUSfzFH-qtw;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->lambda$initWebView$7$EditPreviewFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method
