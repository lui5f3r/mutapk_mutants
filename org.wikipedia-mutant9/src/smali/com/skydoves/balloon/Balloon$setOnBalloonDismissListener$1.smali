.class public final Lcom/skydoves/balloon/Balloon$setOnBalloonDismissListener$1;
.super Ljava/lang/Object;
.source "Balloon.kt"

# interfaces
.implements Lcom/skydoves/balloon/OnBalloonDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $unit:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$setOnBalloonDismissListener$1;->$unit:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBalloonDismiss()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$setOnBalloonDismissListener$1;->$unit:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
