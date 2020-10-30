.class final Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$2;
.super Ljava/lang/Object;
.source "TalkTopicsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$2;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$2;->this$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->access$loadTopics(Lorg/wikipedia/talk/TalkTopicsActivity;)V

    return-void
.end method
