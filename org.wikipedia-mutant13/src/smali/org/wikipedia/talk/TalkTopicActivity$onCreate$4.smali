.class final Lorg/wikipedia/talk/TalkTopicActivity$onCreate$4;
.super Ljava/lang/Object;
.source "TalkTopicActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/talk/TalkTopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$4;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$onCreate$4;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicActivity;->access$onSaveClicked(Lorg/wikipedia/talk/TalkTopicActivity;)V

    return-void
.end method