.class synthetic Lorg/wikipedia/login/ResetPasswordActivity$1;
.super Ljava/lang/Object;
.source "ResetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/login/ResetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$wikipedia$createaccount$CreateAccountActivity$ValidateResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    invoke-static {}, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->values()[Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/wikipedia/login/ResetPasswordActivity$1;->$SwitchMap$org$wikipedia$createaccount$CreateAccountActivity$ValidateResult:[I

    :try_start_0
    sget-object v1, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->INVALID_PASSWORD:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/wikipedia/login/ResetPasswordActivity$1;->$SwitchMap$org$wikipedia$createaccount$CreateAccountActivity$ValidateResult:[I

    sget-object v1, Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;->PASSWORD_MISMATCH:Lorg/wikipedia/createaccount/CreateAccountActivity$ValidateResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
