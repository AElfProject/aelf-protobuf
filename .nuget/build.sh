#!/bin/bash

HERE=$(cd "$(dirname "$0")";pwd)
cd ${HERE}

protoc --proto_path=../proto/ --csharp_out=AElf.Types/ ../proto/*

dotnet build AElf.Types/AElf.Types.csproj --configuration Release
